.class Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EpisodeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/EpisodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeasonListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/api/model/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/EpisodeList;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/EpisodeList;Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p3, seasons:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    .line 295
    const v0, 0x7f0400fc

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/finsky/api/model/Document;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method private getSeasonTitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .registers 4
    .parameter "item"

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 316
    if-nez p2, :cond_12

    .line 317
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040105

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 321
    :cond_12
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .line 323
    .local v0, item:Lcom/google/android/finsky/api/model/Document;
    const v2, 0x7f08020b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 324
    .local v1, spinnerText:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getSeasonTitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    #getter for: Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/EpisodeList;->access$100(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    if-ne v0, v2, :cond_3d

    .line 327
    const v2, 0x7f0a002f

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 331
    :goto_3c
    return-object p2

    .line 329
    :cond_3d
    const v2, 0x7f020062

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400fd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    .local v0, item:Lcom/google/android/finsky/api/model/Document;
    move-object v1, p2

    .line 306
    check-cast v1, Landroid/widget/TextView;

    .line 307
    .local v1, spinnerText:Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getSeasonTitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    #getter for: Lcom/google/android/finsky/layout/EpisodeList;->mCorpusColor:I
    invoke-static {v2}, Lcom/google/android/finsky/layout/EpisodeList;->access$000(Lcom/google/android/finsky/layout/EpisodeList;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    return-object p2
.end method
