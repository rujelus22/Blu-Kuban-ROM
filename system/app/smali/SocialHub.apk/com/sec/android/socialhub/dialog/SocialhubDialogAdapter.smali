.class public abstract Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SocialhubDialogAdapter.java"


# instance fields
.field protected mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mInflator:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter "context"
    .parameter "resource_id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mArray:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 38
    iput-object p3, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mArray:Ljava/util/ArrayList;

    .line 39
    iput p2, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mLayoutResource:I

    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;I)V
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "id"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, view:Landroid/view/View;
    if-nez p2, :cond_b

    .line 64
    invoke-virtual {p0, p3}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    :goto_7
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->bindView(Landroid/view/View;I)V

    .line 73
    return-object v0

    .line 68
    :cond_b
    move-object v0, p2

    goto :goto_7
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "group"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mInflator:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/socialhub/dialog/SocialhubDialogAdapter;->mLayoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, v:Landroid/view/View;
    return-object v0
.end method
