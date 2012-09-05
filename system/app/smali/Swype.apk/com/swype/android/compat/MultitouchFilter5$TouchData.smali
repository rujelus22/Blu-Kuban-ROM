.class Lcom/swype/android/compat/MultitouchFilter5$TouchData;
.super Ljava/lang/Object;
.source "MultitouchFilter5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/compat/MultitouchFilter5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchData"
.end annotation


# instance fields
.field public id:I

.field public timestamp:J

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swype/android/compat/MultitouchFilter5$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/swype/android/compat/MultitouchFilter5$TouchData;-><init>()V

    return-void
.end method


# virtual methods
.method public setData(IIIJ)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "id"
    .parameter "timestamp"

    .prologue
    .line 68
    iput p1, p0, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->x:I

    .line 69
    iput p2, p0, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->y:I

    .line 70
    iput p3, p0, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->id:I

    .line 71
    iput-wide p4, p0, Lcom/swype/android/compat/MultitouchFilter5$TouchData;->timestamp:J

    .line 72
    return-void
.end method
