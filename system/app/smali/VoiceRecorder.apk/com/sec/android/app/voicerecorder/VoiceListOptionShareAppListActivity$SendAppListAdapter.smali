.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoiceListOptionShareAppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendAppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    .line 584
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 585
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 590
    move-object v3, p2

    .line 592
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_15

    .line 593
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 594
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030015

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 597
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_15
    invoke-virtual {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;

    .line 599
    .local v2, ti:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;
    if-eqz v2, :cond_41

    .line 601
    const v5, 0x7f09003e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 602
    .local v0, appicon:Landroid/widget/ImageView;
    const v5, 0x7f09003f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 604
    .local v1, appname:Landroid/widget/TextView;
    if-eqz v0, :cond_38

    .line 605
    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    :cond_38
    if-eqz v1, :cond_41

    .line 608
    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    .end local v0           #appicon:Landroid/widget/ImageView;
    .end local v1           #appname:Landroid/widget/TextView;
    :cond_41
    return-object v3
.end method
