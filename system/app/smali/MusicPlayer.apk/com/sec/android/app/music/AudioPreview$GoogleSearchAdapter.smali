.class Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleSearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/AudioPreview;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3634
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;->this$0:Lcom/sec/android/app/music/AudioPreview;

    .line 3635
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3636
    iput-object p4, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;->items:Ljava/util/ArrayList;

    .line 3637
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3641
    move-object v2, p2

    .line 3642
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_15

    .line 3643
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 3644
    .local v3, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f030024

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3646
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;

    .line 3647
    .local v0, ti:Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;
    if-eqz v0, :cond_2f

    .line 3648
    const v4, 0x7f0c00b7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3651
    .local v1, titleview:Landroid/widget/TextView;
    if-eqz v1, :cond_2f

    .line 3652
    iget-object v4, v0, Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3656
    .end local v1           #titleview:Landroid/widget/TextView;
    :cond_2f
    return-object v2
.end method
