.class Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;
.super Ljava/lang/Object;
.source "Ui3dMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->timeBoxtchange(Ljava/lang/String;)V
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
    .line 1088
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1090
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    #getter for: Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mAlreadySelect:Z
    invoke-static {v4}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->access$200(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_b

    .line 1120
    :goto_a
    return-void

    .line 1094
    :cond_b
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v4, v4, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByName(Ljava/lang/String;)Lcom/sec/android/app/clockpackage/worldclock/City;

    move-result-object v0

    .line 1096
    .local v0, city:Lcom/sec/android/app/clockpackage/worldclock/City;
    if-nez v0, :cond_32

    .line 1097
    const-string v4, "Ui3dMainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to get city = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v6, v6, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1101
    :cond_32
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/City;->getUniqueID()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->isDuplication(I)Z

    move-result v4

    if-nez v4, :cond_67

    .line 1102
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v4, v0}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->saveDB(Lcom/sec/android/app/clockpackage/worldclock/City;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 1103
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const v6, 0x7f0b0098

    invoke-virtual {v5, v6}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1106
    :cond_5c
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v4, v7}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->removeDialog(I)V

    .line 1107
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v4}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->finish()V

    goto :goto_a

    .line 1109
    :cond_67
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    #setter for: Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mAlreadySelect:Z
    invoke-static {v4, v7}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->access$202(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;Z)Z

    .line 1110
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v4, v4, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1111
    .local v1, divIndex:I
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v4, v4, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mCityCountrySel:Ljava/lang/String;

    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1114
    .local v2, selectCity:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v5, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const v6, 0x7f0b0096

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1116
    .local v3, toast:Landroid/widget/Toast;
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 1117
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1118
    iget-object v4, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$7;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v4, v4, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mReleaseToast:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a
.end method
