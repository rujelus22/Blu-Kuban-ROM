.class public Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;
.super Ljava/lang/Object;
.source "MasterTemplateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailHolder"
.end annotation


# instance fields
.field mFrame:Landroid/widget/FrameLayout;

.field mText:Landroid/widget/TextView;

.field mThumbnail:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$ThumbnailHolder;->this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
