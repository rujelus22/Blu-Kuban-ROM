.class Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const v0, 0x7f0e00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;->mAmPm:Landroid/view/View;

    .line 97
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .registers 4
    .parameter "isMorning"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;->mAmPm:Landroid/view/View;

    if-eqz p1, :cond_b

    const v0, 0x7f020069

    :goto_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    return-void

    .line 104
    :cond_b
    const v0, 0x7f02006f

    goto :goto_7
.end method

.method setShowAmPm(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$AmPm;->mAmPm:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void

    .line 100
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
