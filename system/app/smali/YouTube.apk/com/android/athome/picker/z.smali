.class final Lcom/android/athome/picker/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/z;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 502
    check-cast p1, Lcom/android/athome/picker/MediaOutput;

    check-cast p2, Lcom/android/athome/picker/MediaOutput;

    invoke-static {p1}, Lcom/android/athome/picker/q;->b(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {p2}, Lcom/android/athome/picker/q;->b(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13

    :cond_16
    invoke-static {p2}, Lcom/android/athome/picker/q;->b(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v0, v2

    goto :goto_13

    :cond_1e
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2c

    invoke-virtual {p2}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    move v0, v1

    goto :goto_13

    :cond_2c
    invoke-virtual {p2}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    move v0, v2

    goto :goto_13

    :cond_34
    iget-object v0, p0, Lcom/android/athome/picker/z;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_13
.end method
