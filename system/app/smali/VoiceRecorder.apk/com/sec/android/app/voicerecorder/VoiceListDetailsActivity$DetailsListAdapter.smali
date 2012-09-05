.class Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VoiceListDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 175
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 179
    move-object v3, p2

    .line 181
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;

    .line 183
    .local v1, ti:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;
    if-nez v3, :cond_1b

    .line 184
    iget-object v5, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsListAdapter;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 186
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 189
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_1b
    if-eqz v1, :cond_43

    if-eqz v3, :cond_43

    .line 190
    const v5, 0x7f09002e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 191
    .local v2, title:Landroid/widget/TextView;
    const v5, 0x7f09002f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    .local v0, summary:Landroid/widget/TextView;
    if-eqz v2, :cond_3a

    .line 194
    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :cond_3a
    if-eqz v0, :cond_43

    .line 197
    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .end local v0           #summary:Landroid/widget/TextView;
    .end local v2           #title:Landroid/widget/TextView;
    :cond_43
    return-object v3
.end method
