.class Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;
.super Lorg/simpleframework/xml/util/WeakCache;
.source "ScannerBuilder.java"

# interfaces
.implements Lorg/simpleframework/xml/convert/Scanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/WeakCache",
        "<",
        "Ljava/lang/Class;",
        "Ljava/lang/annotation/Annotation;",
        ">;",
        "Lorg/simpleframework/xml/convert/Scanner;"
    }
.end annotation


# instance fields
.field private final root:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/simpleframework/xml/util/WeakCache;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->root:Ljava/lang/Class;

    .line 94
    return-void
.end method

.method private find(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->root:Ljava/lang/Class;

    move-object v1, v0

    .line 130
    :goto_3
    if-eqz v1, :cond_12

    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_c

    .line 138
    :goto_b
    return-object v0

    .line 136
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 137
    goto :goto_3

    .line 138
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public scan(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 108
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->find(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 110
    if-eqz p1, :cond_f

    .line 111
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_f
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0
.end method
