.class public Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalGroupInfo"
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private id:J

.field public systemId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "id"
    .parameter "title"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "systemId"

    .prologue
    .line 1177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setId(J)V

    .line 1181
    invoke-virtual {p0, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setTitle(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0, p6}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setSystemId(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0, p4}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setAccountName(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p0, p5}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setAccountType(Ljava/lang/String;)V

    .line 1189
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 1192
    iget-wide v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->id:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .registers 2
    .parameter "accountName"

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountName:Ljava/lang/String;

    .line 1217
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .registers 2
    .parameter "accountType"

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountType:Ljava/lang/String;

    .line 1225
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1196
    iput-wide p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->id:J

    .line 1197
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 2
    .parameter "systemId"

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->systemId:Ljava/lang/String;

    .line 1213
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->title:Ljava/lang/String;

    .line 1205
    return-void
.end method
