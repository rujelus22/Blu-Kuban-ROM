.class final Lcom/android/athome/picker/MediaOutputSelector$8;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/athome/picker/MediaOutput;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$8;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutput;)I
    .registers 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 508
    #calls: Lcom/android/athome/picker/MediaOutputSelector;->isOnSpeaker(Lcom/android/athome/picker/MediaOutput;)Z
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputSelector;->access$800(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 509
    #calls: Lcom/android/athome/picker/MediaOutputSelector;->isOnSpeaker(Lcom/android/athome/picker/MediaOutput;)Z
    invoke-static {p2}, Lcom/android/athome/picker/MediaOutputSelector;->access$800(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 518
    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 509
    goto :goto_f

    .line 510
    :cond_12
    #calls: Lcom/android/athome/picker/MediaOutputSelector;->isOnSpeaker(Lcom/android/athome/picker/MediaOutput;)Z
    invoke-static {p2}, Lcom/android/athome/picker/MediaOutputSelector;->access$800(Lcom/android/athome/picker/MediaOutput;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v0, v2

    .line 511
    goto :goto_f

    .line 513
    :cond_1a
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    .line 514
    invoke-virtual {p2}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    move v0, v1

    goto :goto_f

    .line 515
    :cond_28
    invoke-virtual {p2}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_30

    move v0, v2

    .line 516
    goto :goto_f

    .line 518
    :cond_30
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$8;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/athome/picker/MediaOutput;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    check-cast p1, Lcom/android/athome/picker/MediaOutput;

    .end local p1
    check-cast p2, Lcom/android/athome/picker/MediaOutput;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/athome/picker/MediaOutputSelector$8;->compare(Lcom/android/athome/picker/MediaOutput;Lcom/android/athome/picker/MediaOutput;)I

    move-result v0

    return v0
.end method
