.class public Lcom/android/athome/picker/MediaGroupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/MediaGroupAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/athome/picker/MediaOutputGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/athome/picker/MediaGroupAdapter$Listener;

.field private mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

.field private mView:Landroid/widget/AdapterView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaGroupAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/athome/picker/MediaGroupAdapter;)Landroid/widget/AdapterView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mView:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/athome/picker/MediaGroupAdapter;)Lcom/android/athome/picker/MediaOutputGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/athome/picker/MediaGroupAdapter;)Lcom/android/athome/picker/MediaGroupAdapter$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mListener:Lcom/android/athome/picker/MediaGroupAdapter$Listener;

    return-object v0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/athome/picker/MediaGroupAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    if-nez p2, :cond_15

    .line 39
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaGroupAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 41
    .local v4, helium:Landroid/view/LayoutInflater;
    sget v9, Lcom/android/athome/picker/R$layout;->list_item_output_group:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    .end local v4           #helium:Landroid/view/LayoutInflater;
    :cond_15
    move-object v8, p2

    .line 47
    .local v8, tempView:Landroid/view/View;
    move v7, p1

    .line 48
    .local v7, tempPosition:I
    new-instance v9, Lcom/android/athome/picker/MediaGroupAdapter$1;

    invoke-direct {v9, p0, v8, v7}, Lcom/android/athome/picker/MediaGroupAdapter$1;-><init>(Lcom/android/athome/picker/MediaGroupAdapter;Landroid/view/View;I)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/athome/picker/MediaGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/athome/picker/MediaOutputGroup;

    .line 55
    .local v5, item:Lcom/android/athome/picker/MediaOutputGroup;
    sget v9, Lcom/android/athome/picker/R$id;->icon_group:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 56
    .local v2, groupIcon:Landroid/widget/ImageView;
    invoke-virtual {v5}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_e0

    .line 57
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 62
    :goto_3c
    sget v9, Lcom/android/athome/picker/R$id;->receiver_name:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, groupName:Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/android/athome/picker/MediaOutputGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v9, Lcom/android/athome/picker/R$id;->icon_now_playing_bar:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 66
    .local v6, nowPlayingBar:Landroid/widget/ImageView;
    sget v9, Lcom/android/athome/picker/R$id;->receiver_current_status:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, currentStatus:Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/android/athome/picker/MediaOutputGroup;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e6

    .line 68
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {v5}, Lcom/android/athome/picker/MediaOutputGroup;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_74
    sget v9, Lcom/android/athome/picker/R$id;->icon_edit_group:I

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .local v1, editGroup:Landroid/widget/ImageView;
    new-instance v9, Lcom/android/athome/picker/MediaGroupAdapter$2;

    invoke-direct {v9, p0}, Lcom/android/athome/picker/MediaGroupAdapter$2;-><init>(Lcom/android/athome/picker/MediaGroupAdapter;)V

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaGroupAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_9c

    iget-object v9, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v9, :cond_a0

    iget-object v9, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v9}, Lcom/android/athome/picker/MediaOutputGroup;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_a0

    .line 86
    :cond_9c
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_a0
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    iget-object v9, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v9, :cond_b5

    iget-object v9, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    invoke-virtual {v9, v5}, Lcom/android/athome/picker/MediaOutputGroup;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 91
    sget v9, Lcom/android/athome/picker/R$drawable;->list_selected_holo_dark:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    :cond_b5
    const-string v9, "MediaOutputSelector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "groupId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/athome/picker/MediaOutputGroup;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " groupName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/athome/picker/MediaOutputGroup;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object p2

    .line 59
    .end local v0           #currentStatus:Landroid/widget/TextView;
    .end local v1           #editGroup:Landroid/widget/ImageView;
    .end local v3           #groupName:Landroid/widget/TextView;
    .end local v6           #nowPlayingBar:Landroid/widget/ImageView;
    :cond_e0
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_3c

    .line 72
    .restart local v0       #currentStatus:Landroid/widget/TextView;
    .restart local v3       #groupName:Landroid/widget/TextView;
    .restart local v6       #nowPlayingBar:Landroid/widget/ImageView;
    :cond_e6
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_74
.end method

.method public setListener(Lcom/android/athome/picker/MediaGroupAdapter$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mListener:Lcom/android/athome/picker/MediaGroupAdapter$Listener;

    .line 118
    return-void
.end method

.method public setSelectedGroup(Lcom/android/athome/picker/MediaOutputGroup;)V
    .registers 2
    .parameter "group"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mSelectedGroup:Lcom/android/athome/picker/MediaOutputGroup;

    .line 105
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaGroupAdapter;->notifyDataSetInvalidated()V

    .line 106
    return-void
.end method

.method public setView(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/athome/picker/MediaGroupAdapter;->mView:Landroid/widget/AdapterView;

    .line 114
    return-void
.end method
