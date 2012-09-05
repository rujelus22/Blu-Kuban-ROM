.class public Lcom/google/android/opengl/glview/GLViewGroup;
.super Lcom/google/android/opengl/glview/GLView;
.source "GLViewGroup.java"


# instance fields
.field private mChildren:[Lcom/google/android/opengl/glview/GLView;

.field private mChildrenCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/android/opengl/glview/GLView;

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 21
    return-void
.end method

.method private addInArray(Lcom/google/android/opengl/glview/GLView;I)V
    .registers 11
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 47
    .local v0, children:[Lcom/google/android/opengl/glview/GLView;
    iget v1, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    .line 48
    .local v1, count:I
    array-length v2, v0

    .line 49
    .local v2, size:I
    if-ne p2, v1, :cond_3f

    .line 50
    if-ne v2, v1, :cond_18

    .line 51
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/google/android/opengl/glview/GLView;

    iput-object v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 52
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    invoke-static {v0, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 55
    :cond_18
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 70
    :goto_20
    invoke-virtual {p1, p0}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 72
    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/GLViewGroup;->length(Z)F

    move-result v3

    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/GLViewGroup;->getMinLength(Z)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_3b

    invoke-virtual {p0, v6}, Lcom/google/android/opengl/glview/GLViewGroup;->length(Z)F

    move-result v3

    invoke-virtual {p0, v6}, Lcom/google/android/opengl/glview/GLViewGroup;->getMinLength(Z)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3e

    .line 73
    :cond_3b
    invoke-virtual {p0, p0}, Lcom/google/android/opengl/glview/GLViewGroup;->childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V

    .line 75
    :cond_3e
    return-void

    .line 56
    :cond_3f
    if-ge p2, v1, :cond_6a

    .line 57
    if-ne v2, v1, :cond_62

    .line 58
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/google/android/opengl/glview/GLView;

    iput-object v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 59
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    invoke-static {v0, v6, v3, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 65
    :goto_59
    aput-object p1, v0, p2

    .line 66
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    goto :goto_20

    .line 63
    :cond_62
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_59

    .line 68
    :cond_6a
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private removeFromArray(I)V
    .registers 9
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 136
    .local v0, children:[Lcom/google/android/opengl/glview/GLView;
    iget v1, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    .line 137
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_34

    .line 138
    aget-object v2, v0, p1

    invoke-virtual {v2, v4}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 139
    iget v2, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 148
    :goto_18
    invoke-virtual {p0, v6}, Lcom/google/android/opengl/glview/GLViewGroup;->length(Z)F

    move-result v2

    invoke-virtual {p0, v6}, Lcom/google/android/opengl/glview/GLViewGroup;->getMinLength(Z)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_30

    invoke-virtual {p0, v5}, Lcom/google/android/opengl/glview/GLViewGroup;->length(Z)F

    move-result v2

    invoke-virtual {p0, v5}, Lcom/google/android/opengl/glview/GLViewGroup;->getMinLength(Z)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_33

    .line 149
    :cond_30
    invoke-virtual {p0, p0}, Lcom/google/android/opengl/glview/GLViewGroup;->childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V

    .line 151
    :cond_33
    return-void

    .line 140
    :cond_34
    if-ltz p1, :cond_4f

    if-ge p1, v1, :cond_4f

    .line 141
    aget-object v2, v0, p1

    invoke-virtual {v2, v4}, Lcom/google/android/opengl/glview/GLView;->setParent(Lcom/google/android/opengl/glview/GLView;)V

    .line 142
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v2, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_18

    .line 145
    :cond_4f
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private removeViewInternal(ILcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "index"
    .parameter "view"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;->removeFromArray(I)V

    .line 132
    return-void
.end method

.method private removeViewInternal(Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;->indexOfChild(Lcom/google/android/opengl/glview/GLView;)I

    move-result v0

    .line 125
    .local v0, index:I
    if-ltz v0, :cond_9

    .line 126
    invoke-direct {p0, v0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;->removeViewInternal(ILcom/google/android/opengl/glview/GLView;)V

    .line 128
    :cond_9
    return-void
.end method


# virtual methods
.method public addView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/opengl/glview/GLViewGroup;->addView(Lcom/google/android/opengl/glview/GLView;I)V

    .line 43
    return-void
.end method

.method public addView(Lcom/google/android/opengl/glview/GLView;I)V
    .registers 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 30
    if-gez p2, :cond_4

    .line 31
    iget p2, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    .line 33
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/glview/GLViewGroup;->addInArray(Lcom/google/android/opengl/glview/GLView;I)V

    .line 34
    return-void
.end method

.method public getChildAt(I)Lcom/google/android/opengl/glview/GLView;
    .registers 3
    .parameter "index"

    .prologue
    .line 113
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    .line 114
    :cond_7
    const/4 v0, 0x0

    .line 116
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    return v0
.end method

.method public indexOfChild(Lcom/google/android/opengl/glview/GLView;)I
    .registers 6
    .parameter "child"

    .prologue
    .line 85
    iget v1, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildrenCount:I

    .line 86
    .local v1, count:I
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewGroup;->mChildren:[Lcom/google/android/opengl/glview/GLView;

    .line 87
    .local v0, children:[Lcom/google/android/opengl/glview/GLView;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 88
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_c

    .line 92
    .end local v2           #i:I
    :goto_b
    return v2

    .line 87
    .restart local v2       #i:I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 92
    :cond_f
    const/4 v2, -0x1

    goto :goto_b
.end method

.method public removeView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;->removeViewInternal(Lcom/google/android/opengl/glview/GLView;)V

    .line 121
    return-void
.end method
