.class public Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
.super Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;
.source "PlusOneStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/PlusOneStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdatePlusOne"
.end annotation


# instance fields
.field final abuseToken:Ljava/lang/String;

.field final uri:Landroid/net/Uri;

.field final value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "plusOne"
    .parameter "abuseToken"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    .line 87
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    .line 88
    iput-object p3, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->abuseToken:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/plus1/PlusOneEditor;)V
    .registers 5
    .parameter "editor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->abuseToken:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/plus1/PlusOneEditor;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 93
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 101
    instance-of v1, p1, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    if-eqz v1, :cond_1f

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;

    .line 104
    .local v0, otherOperation:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 107
    .end local v0           #otherOperation:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    :goto_1c
    return v1

    .line 104
    .restart local v0       #otherOperation:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c

    .line 107
    .end local v0           #otherOperation:Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;
    :cond_1f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",+1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStore$UpdatePlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
