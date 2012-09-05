.class Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$4;
.super Landroid/os/Handler;
.source "CradleMainTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V
    .registers 2
    .parameter

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 2209
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_7

    .line 2214
    :cond_6
    :goto_6
    return-void

    .line 2211
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2001

    if-ne v0, v1, :cond_6

    goto :goto_6
.end method
