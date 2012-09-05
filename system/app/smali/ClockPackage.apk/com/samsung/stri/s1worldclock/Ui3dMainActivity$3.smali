.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$3;
.super Landroid/os/Handler;
.source "Ui3dMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$3;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 642
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 644
    const/4 v3, 0x0

    .line 645
    .local v3, sel:I
    iget-object v6, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$3;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v6}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 646
    .local v5, timezone:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v2, :cond_31

    aget-object v4, v0, v1

    .line 647
    .local v4, st:Ljava/lang/String;
    const-string v6, "+"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 648
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 650
    :cond_25
    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_3b

    .line 655
    .end local v4           #st:Ljava/lang/String;
    :cond_31
    iget-object v6, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$3;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    #getter for: Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mTzSwitcher:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;
    invoke-static {v6}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->access$100(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->setSelection(I)V

    .line 656
    return-void

    .line 653
    .restart local v4       #st:Ljava/lang/String;
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method
