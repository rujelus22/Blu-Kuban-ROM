.class Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;
.super Ljava/lang/Object;
.source "TranscodeElement.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/TranscodeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextListComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/app/video/editor/external/ClipartParams;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;)I
    .registers 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 962
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/samsung/app/video/editor/external/ClipartParams;

    check-cast p2, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement$TextListComparator;->compare(Lcom/samsung/app/video/editor/external/ClipartParams;Lcom/samsung/app/video/editor/external/ClipartParams;)I

    move-result v0

    return v0
.end method
