.class public abstract Lcom/sec/android/socialhub/SocialHubQueryBuilder;
.super Ljava/lang/Object;
.source "SocialHubQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$SearchQuery;,
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$NormalQuery;,
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedNormalQuery;,
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$FeedBaseQuery;,
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgDeleteQuery;,
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgNormalQuery;,
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$MsgBaseQeury;,
        Lcom/sec/android/socialhub/SocialHubQueryBuilder$ThreadMsgQuery;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field public mEditText:Landroid/widget/EditText;

.field public mInfo:Landroid/os/Bundle;

.field protected mSnsService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mEditText:Landroid/widget/EditText;

    .line 45
    iput-object v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    .line 46
    iput-object v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mSnsService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 53
    iput-object p1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mSnsService:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    .line 55
    return-void
.end method


# virtual methods
.method public getConidtion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_f

    .line 67
    iget-object v1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_f
    return-object v0
.end method

.method public getField()Ljava/lang/String;
    .registers 4

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    .line 82
    iget-object v1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    const-string v2, "search_field"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_d
    return-object v0
.end method

.method public getFieldResource()I
    .registers 5

    .prologue
    .line 93
    const/4 v1, -0x1

    .line 94
    .local v1, ret:I
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    if-eqz v2, :cond_13

    .line 96
    iget-object v2, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    const-string v3, "search_model"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    .line 97
    .local v0, model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->getTextResource()I

    move-result v1

    .line 99
    .end local v0           #model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    :cond_13
    return v1
.end method

.method public abstract getQuery(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public makeSelection(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "selection"
    .parameter
    .parameter "sp_field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, sp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, where:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;

    .line 127
    .local v1, sp:Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;
    iget-boolean v3, v1, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;->is_expired:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    .line 129
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eq v3, v4, :cond_29

    .line 131
    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_29
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "!="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, v1, Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;->sp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 137
    :cond_39
    const-string v3, "SocialHubQueryBuilder"

    const-string v4, "makeSelection()"

    const-string v5, "is_expired false!! it does not have to be contained!!!!"

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 141
    .end local v1           #sp:Lcom/sec/android/socialhub/util/SocialHubUtil$SessionSP;
    :cond_43
    const-string v3, "SocialHubQueryBuilder"

    const-string v4, "makeSelection()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 2
    .parameter "bundle"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mInfo:Landroid/os/Bundle;

    .line 119
    return-void
.end method

.method public setEditText(Landroid/widget/EditText;)V
    .registers 2
    .parameter "edit"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/socialhub/SocialHubQueryBuilder;->mEditText:Landroid/widget/EditText;

    .line 110
    return-void
.end method
