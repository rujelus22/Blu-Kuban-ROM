.class public Lcom/sec/android/app/selftestmode/TspGridModeTest;
.super Landroid/app/Activity;
.source "TspGridModeTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;
    }
.end annotation


# instance fields
.field private final HEIGHT_BASIS:I

.field private final WIDTH_BASIS:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/16 v0, 0xd

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest;->HEIGHT_BASIS:I

    .line 69
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/selftestmode/TspGridModeTest;->WIDTH_BASIS:I

    .line 107
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/selftestmode/TspGridModeTest$MyView;-><init>(Lcom/sec/android/app/selftestmode/TspGridModeTest;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/TspGridModeTest;->setContentView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/TspGridModeTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 83
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    return-void
.end method
