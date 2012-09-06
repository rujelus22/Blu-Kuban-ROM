.class Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionAdapter"
.end annotation


# instance fields
.field private final mDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

.field private final mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

.field private final mHeaderTextId:I

.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V
    .registers 6
    .parameter
    .parameter "documentState"
    .parameter "headerTextId"
    .parameter "headerAction"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 109
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    .line 110
    iput p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I

    .line 111
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    .line 113
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addDoc(Lcom/google/android/finsky/api/model/Document;)V
    .registers 3
    .parameter "doc"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method clearDocs()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 145
    if-nez p1, :cond_4

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 140
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 159
    if-nez p1, :cond_4

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x2

    goto :goto_3

    :cond_c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItemViewType(I)I

    move-result v7

    .line 169
    .local v7, type:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_36

    const/4 v5, 0x1

    .line 170
    .local v5, isLastInSection:Z
    :goto_d
    const/4 v6, 0x0

    .line 172
    .local v6, result:Landroid/view/View;
    packed-switch v7, :pswitch_data_5e

    .line 184
    :goto_11
    if-nez v6, :cond_5d

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null row view for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    .end local v5           #isLastInSection:Z
    .end local v6           #result:Landroid/view/View;
    :cond_36
    const/4 v5, 0x0

    goto :goto_d

    .line 174
    .restart local v5       #isLastInSection:Z
    .restart local v6       #result:Landroid/view/View;
    :pswitch_38
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v1, v0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 175
    goto :goto_11

    .line 177
    :pswitch_45
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    move-object v2, p2

    move-object v3, p3

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;

    move-result-object v6

    .line 179
    goto :goto_11

    .line 181
    :pswitch_56
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    invoke-static {v0, p1, p2, p3, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$400(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v6

    goto :goto_11

    .line 188
    :cond_5d
    return-object v6

    .line 172
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_56
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x3

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method sortDocs()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    return-void
.end method
