.class final Lcom/google/android/picasastore/FIFEUtil$Splitter$1;
.super Ljava/lang/Object;
.source "FIFEUtil.java"

# interfaces
.implements Lcom/google/android/picasastore/FIFEUtil$Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasastore/FIFEUtil$Splitter;->on(Ljava/lang/String;)Lcom/google/android/picasastore/FIFEUtil$Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separator:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$1;->val$separator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator(Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;
    .registers 4
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 395
    new-instance v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/picasastore/FIFEUtil$Splitter$1$1;-><init>(Lcom/google/android/picasastore/FIFEUtil$Splitter$1;Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic iterator(Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 392
    invoke-virtual {p0, p1, p2}, Lcom/google/android/picasastore/FIFEUtil$Splitter$1;->iterator(Lcom/google/android/picasastore/FIFEUtil$Splitter;Ljava/lang/CharSequence;)Lcom/google/android/picasastore/FIFEUtil$Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
