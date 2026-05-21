---
marp: true
paginate: true
footer: |
    <center>Database Management Systems | Week-8</center>
---

<style scoped>
    h1 {
        text-align: center;
        font-size: 70px
    }
</style>

<style>
/* Add "Page" prefix and total page number */
section::after {
  content: 'Page ' attr(data-marpit-pagination) ' / ' attr(data-marpit-pagination-total);
  font-weight: bold;
  padding: 1px;
  color: black;
  background-color: aliceblue;
}

section {
  width: 1280px;
  height: 720px;
  background-color: #fff;
  color: #333;
}

footer {
    background-color: #fff;
    color: #333;
    width: 1280px;
    height: 35px;
    font-weight: bold;
    font-size: 25px;
    background-color: aliceblue;
    padding: 1px;
}
</style>


# DBMS WEEK 8

---

# Tree

![](Binary_tree_v2.svg)

<style scoped>
    img {
        width: 2000px;
        height: 500px;
    }
</style>

---

# Tree

- **Internal Nodes** - The node which has at least one child is called internal Node
- **Subtree** - Subtree represents the tree rooted at that node
- **Siblings** - Nodes having the same parents
- **Arity** - Number of children of a node
- **Height** - Maximum level in a tree


<br>

Arity of the tree = Maximum arity of a node

---

# Facts of the Tree (Continued)

- ### **A tree with n nodes has n-1 edges**
- ### **The maximum number of nodes at level $l$ of a binary tree is $2^l$**
- ### **Maximum number of nodes at height h is $2^{h+1} -1$**

---

# Binary Search Tree

Consider a data: 17, 22, 12, 10, 14, 25, 19

![bin_tree](binary_tree.png)


<style scoped>
    img {
        width: 900px;
        height: 450px;
    }
</style>

---

# Example

Consider a data: 15, 10, 20, 6, 12, 17, 23, 2, 8, 11, 14, 27

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

---

# Physical Storage Media

## Volatile Storage

- Volatile storage devices lose data when power is interrupted or turned off.

**Example -** RAM  

## Non-Volatile Storage

- Non-volatile devices are able to retain data regardless of the status of the power source

**Example -** HDD, SDD, Pendrives

---

## Cache 

- fastest and most costly form of storage
- volatile
- managed by the computer system hardware

---

# Storage Heirarchy

### Primary Storage

- Volatile
- Very fast

### Secondary Storage

- Non-volatile
- Moderately fast

### Tertiary Storage

- Non-volatile
- Very slow

---

# Magnetic Disks

![](magnetic_disk.jpg)

---

# Magnetic Disk

<style scoped>
    img {
        width: 400px;
        height: 300px;
    }
</style>

![](Disk-structure.svg)

- (A) Track
- (B) Geometrical sector
- (C) Disk sector
- (D) Cluster

---

# Magnetic Disk

- **Access Time:** time from a read or write request issue to start of data transfer:
- **Seek Time:** time to reposition the arm over the correct track
- **Rotational Latency:** time for the sector to be accessed to appear under the head

- **Data-transfer Rate:** the rate at which data can be retrieved from or stored to the disk


<br>

- Access time = seek time + Rotational latency
- $Access \space time = seek\space time + \frac{1}{2} \times time \space period$

---

# Formula's for Numerical Problems

- Capacity of disk = Total no of sectors x sector size

- $Time \space period = \frac{1 \space minute}{Rotational \space speed}$


- $Transfer\space rate = \frac{Bytes \space on \space one \space track}{time \space period}$


- $Transfer\space time = \frac{File \space size}{transfer \space rate}$

- Number of cylinders = Number of tracks/surface

- Min no of bits required to address all sectors = $\lceil log_{2}(no \space of \space sectors)\rceil$

---

# Example

Consider you have a file named “ IITM BSc ” in your hard disk. The file size is 1000 KB.
Seek time of your hard disk read head is 3ms, rotational speed is 30,000 RPM. The disk has 200 sectors/track and sector size is 512 bytes.

a) What is the transfer rate of your hard-disk (in KB/ms)?

b) Considering the fact that the file data is stored in all non-consecutive sectors, how much time will be required to read the whole file after the read request is made?

**Note:** Consider, Access time + Transfer time


<br><br>

---

---

# Example 

Consider a disk with 10 platters, 64 tracks/surface, 256 sectors/track, 512 bytes/sector.
4 bytes/sector is reserved for storing file system information (formatting data).

a) How much free space is available for use (in MB, upto two decimal places)?

b) How many bits are required for addressing all the sectors ?

<br><br><br><br>

---
