---
marp:  true
paginate: true
size: 4:3
---

## Element and matrix operations!

![w:400px](images/matrixVelement.png)

Working with whole vectors / matrices is not the same as working on **elements**.

<br>

>unless you specifically want to do **matrix algebra**	you'll usually need the "dotted versions", e.g. ``.*`` and ``./``

---

# Indexing elements

Accessing certain parts of a vector/matrix: **key idea**

Use **indexing**. If you want to get hold of parts of a matrix::

```matlab
a = [1, 2, 3;
 	 4, 5, 6]
```
specify **row** and **column**::

```matlab
a(1,1)	% element at row=1, column=1
a(2,1)	% element at row=2, column=1
```
---

# Indexing (many rows, columns)

```matlab
a = [1, 2, 3;
     4, 5, 6]
```

<br>
what does the following do?

<br>
<br>


```matlab
a([1 2],1)	% elements at row=[1 2], column=1
a([1 2],[1 3])	% elements at rows 1 and 2, columns 1 and 3
```
---

# Indexing (tricks)

Special tricks to get hold of all rows/columns ``:`` (colon)

```matlab
a = [1, 2, 3;
     4, 5, 6]
```

specify all **rows**

```matlab
a(:,1)  % elements for ALL rows, column=1
```

or all til the end of the matrix

```matlab
a(1, 2:end )  % elements at row 1 , columns 2 to end
```
---
## 2 dimensions

### rows `then` columns

the order in which we think about the data is important!

## more than 2 dimensions

### rows, columns, 3$^\textsf{rd}$ dim, [more dimensions]

can think of those by analogy to an Excel spreadsheet?

rows, columns, sheets, ...


---

# More than 2 dimensions
- many kinds of data have more than 2d
- anatomical brain images: 3d (many 2d images)
- fMRI data: 4d (many 3d volumes)
- can you think of others?
- Matlab handles these easily::
```matlab
V = rand(10, 10, 5); % 10-by-10-by-5 array
V(7,8,2) % returns element at that index
```
---

# Storing things other than numbers


- other kinds of data, not just "numbers"
- e.g. text is stored as *character strings*
- more abstract *data types*: ``struct``, ``cell``,
- we'll meet some of them later

