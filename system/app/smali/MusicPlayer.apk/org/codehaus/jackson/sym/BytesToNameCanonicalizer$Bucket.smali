.class final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field final mName:Lorg/codehaus/jackson/sym/Name;

.field final mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
    .registers 3
    .parameter "name"
    .parameter "next"

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 873
    iput-object p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 874
    return-void
.end method


# virtual methods
.method public find(III)Lorg/codehaus/jackson/sym/Name;
    .registers 7
    .parameter "hash"
    .parameter "firstQuad"
    .parameter "secondQuad"

    .prologue
    .line 887
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_13

    .line 888
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 889
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 900
    :cond_12
    :goto_12
    return-object v1

    .line 892
    :cond_13
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, curr:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_15
    if-eqz v0, :cond_28

    .line 893
    iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 894
    .local v1, currName:Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 895
    invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 892
    :cond_25
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_15

    .line 900
    .end local v1           #currName:Lorg/codehaus/jackson/sym/Name;
    :cond_28
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public find(I[II)Lorg/codehaus/jackson/sym/Name;
    .registers 7
    .parameter "hash"
    .parameter "quads"
    .parameter "qlen"

    .prologue
    .line 905
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_13

    .line 906
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 907
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 918
    :cond_12
    :goto_12
    return-object v1

    .line 910
    :cond_13
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, curr:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_15
    if-eqz v0, :cond_28

    .line 911
    iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 912
    .local v1, currName:Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 913
    invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 910
    :cond_25
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_15

    .line 918
    .end local v1           #currName:Lorg/codehaus/jackson/sym/Name;
    :cond_28
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public length()I
    .registers 3

    .prologue
    .line 878
    const/4 v1, 0x1

    .line 879
    .local v1, len:I
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, curr:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_3
    if-eqz v0, :cond_a

    .line 880
    add-int/lit8 v1, v1, 0x1

    .line 879
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_3

    .line 882
    :cond_a
    return v1
.end method
