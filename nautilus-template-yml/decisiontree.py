from sklearn.datasets import load_iris
from sklearn import tree
import matplotlib.pyplot as plt
iris = load_iris()
X, y = iris.data, iris.target
clf = tree.DecisionTreeClassifier()
clf = clf.fit(X, y)
plt.figure()
tree.plot_tree(clf,filled=True)  
plt.savefig('tree.png',bbox_inches = "tight")