.class Lcom/infraware/polarisoffice/common/BulletNumberingActivity$4;
.super Ljava/lang/Object;
.source "BulletNumberingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/BulletNumberingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$4;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/BulletNumberingActivity$4;->this$0:Lcom/infraware/polarisoffice/common/BulletNumberingActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/BulletNumberingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->playKeyClickSoundEffect(Landroid/content/Context;)V

    .line 131
    return-void
.end method
