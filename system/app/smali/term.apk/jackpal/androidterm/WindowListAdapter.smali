.class public Ljackpal/androidterm/WindowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WindowListAdapter.java"

# interfaces
.implements Ljackpal/androidterm/emulatorview/UpdateCallback;


# instance fields
.field private mSessions:Ljackpal/androidterm/util/SessionList;


# direct methods
.method public constructor <init>(Ljackpal/androidterm/util/SessionList;)V
    .registers 2
    .parameter "sessions"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Ljackpal/androidterm/WindowListAdapter;->setSessions(Ljackpal/androidterm/util/SessionList;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0}, Ljackpal/androidterm/util/SessionList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 49
    iget-object v0, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    invoke-virtual {v0, p1}, Ljackpal/androidterm/util/SessionList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 57
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 58
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030001

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, child:Landroid/view/View;
    const v6, 0x7f0b0001

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 60
    .local v4, label:Landroid/widget/TextView;
    const v6, 0x7f060022

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, p1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v6, 0x7f0b0003

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, close:Landroid/view/View;
    iget-object v5, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    .line 64
    .local v5, sessions:Ljackpal/androidterm/util/SessionList;
    move v3, p1

    .line 65
    .local v3, closePosition:I
    new-instance v6, Ljackpal/androidterm/WindowListAdapter$1;

    invoke-direct {v6, p0, v5, v3}, Ljackpal/androidterm/WindowListAdapter$1;-><init>(Ljackpal/androidterm/WindowListAdapter;Ljackpal/androidterm/util/SessionList;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v1
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 79
    invoke-virtual {p0}, Ljackpal/androidterm/WindowListAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public setSessions(Ljackpal/androidterm/util/SessionList;)V
    .registers 2
    .parameter "sessions"

    .prologue
    .line 38
    iput-object p1, p0, Ljackpal/androidterm/WindowListAdapter;->mSessions:Ljackpal/androidterm/util/SessionList;

    .line 39
    if-eqz p1, :cond_7

    .line 40
    invoke-virtual {p0}, Ljackpal/androidterm/WindowListAdapter;->onUpdate()V

    .line 42
    :cond_7
    return-void
.end method
