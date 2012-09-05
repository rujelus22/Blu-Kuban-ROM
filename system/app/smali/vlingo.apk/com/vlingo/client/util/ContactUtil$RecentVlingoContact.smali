.class public Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;
.super Lcom/vlingo/client/android/core/contacts/ComparableVlingoContact;
.source "ContactUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/util/ContactUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentVlingoContact"
.end annotation


# instance fields
.field public date:J

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/android/core/contacts/ComparableVlingoContact;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V

    .line 550
    return-void
.end method


# virtual methods
.method public addNumber(Ljava/lang/String;)V
    .registers 8
    .parameter "number"

    .prologue
    .line 553
    new-instance v0, Lcom/vlingo/client/core/contacts/ContactDetail;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/core/contacts/ContactDetail;-><init>(Ljava/lang/String;IFIZ)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V

    .line 554
    return-void
.end method
