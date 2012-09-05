.class Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;
.super Landroid/view/View;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderAdapterNullItem"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;->this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    .line 1822
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1823
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1827
    const/4 v0, 0x0

    .line 1828
    .local v0, width:I
    if-eqz p1, :cond_7

    .line 1829
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1830
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderAdapterNullItem;->setMeasuredDimension(II)V

    .line 1831
    return-void
.end method
