#!/usr/bin/env python3
# Scikit-learn Iris example

from sklearn import datasets
from sklearn.model_selection import train_test_split
from sklearn import svm
from sklearn.externals import joblib
import json

# load the data
iris = datasets.load_iris()
X, y = iris.data, iris.target
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2)

# Train a Support Vector Classifier
clf = svm.SVC(gamma='auto')
print(clf)
clf.fit(X_train, y_train)
# save the trained model
joblib.dump(clf, 'iris_model.joblib')
print("Saved model to iris_model.joblib")

# Classify the test data
accuracy = clf.score(X_test, y_test)
print("Accuracy is %0.3f" % accuracy)

# save the results
with open('results.json', 'w') as f:
    json.dump({'model':'SVC',
               'parameters':{'gamma':'auto'},
               'metrics':{'accuracy':round(accuracy,3)}},
              f, indent=2)
print("Wrote results to results.json.")
