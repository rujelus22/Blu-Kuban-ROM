.class public final Lcom/google/android/ytremote/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    array-length v0, p0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 62
    return-object v1
.end method
