.class public Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;
.super Ljava/lang/Object;
.source "RecentContactsCache.java"


# static fields
.field public static final CACHE_EXPIRATION_TIME_MS:I = 0xea60

.field public static final MAX_CONTACTS:I = 0x19


# instance fields
.field private lastAccessTime:J

.field private recentlyCalledContacts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private recentlyContactedContacts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private recentlyTextedContacts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyTextedContacts:Ljava/util/Vector;

    .line 22
    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyContactedContacts:Ljava/util/Vector;

    .line 23
    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyCalledContacts:Ljava/util/Vector;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->lastAccessTime:J

    .line 29
    return-void
.end method

.method private static getMatches(Ljava/lang/String;Ljava/util/Vector;I)Ljava/util/Vector;
    .registers 7
    .parameter "query"
    .parameter
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, sourceSet:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 69
    .local v1, matches:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    if-nez p0, :cond_29

    .line 70
    const-string p0, ""

    .line 74
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_32

    .line 76
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/util/ContactUtil$Contact;

    .line 77
    .local v2, sourceItem:Lcom/vlingo/client/util/ContactUtil$Contact;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, p2, :cond_13

    .line 115
    .end local v2           #sourceItem:Lcom/vlingo/client/util/ContactUtil$Contact;
    :cond_28
    return-object v1

    .line 72
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 85
    :cond_32
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/util/ContactUtil$Contact;

    .line 86
    .restart local v2       #sourceItem:Lcom/vlingo/client/util/ContactUtil$Contact;
    iget-object v3, v2, Lcom/vlingo/client/util/ContactUtil$Contact;->name:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/vlingo/client/util/StringMatchUtil;->isExactMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 88
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_53
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, p2, :cond_36

    .line 95
    .end local v2           #sourceItem:Lcom/vlingo/client/util/ContactUtil$Contact;
    :cond_59
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/util/ContactUtil$Contact;

    .line 96
    .restart local v2       #sourceItem:Lcom/vlingo/client/util/ContactUtil$Contact;
    iget-object v3, v2, Lcom/vlingo/client/util/ContactUtil$Contact;->name:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/vlingo/client/util/StringMatchUtil;->isPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_7a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v3, p2, :cond_5d

    .line 105
    .end local v2           #sourceItem:Lcom/vlingo/client/util/ContactUtil$Contact;
    :cond_80
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_84
    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/util/ContactUtil$Contact;

    .line 106
    .restart local v2       #sourceItem:Lcom/vlingo/client/util/ContactUtil$Contact;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v3, p2, :cond_28

    .line 109
    iget-object v3, v2, Lcom/vlingo/client/util/ContactUtil$Contact;->name:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/vlingo/client/util/StringMatchUtil;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_84
.end method


# virtual methods
.method public getRecentlyCalledContactNames(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;
    .registers 5
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyCalledContacts:Ljava/util/Vector;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->isCacheExpired()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 49
    :cond_a
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lcom/vlingo/client/util/ContactUtil;->getRecentlyCalledContacts(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyCalledContacts:Ljava/util/Vector;

    .line 50
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->onCacheRefreshed()V

    .line 52
    :cond_15
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyCalledContacts:Ljava/util/Vector;

    invoke-static {p2, v0, p3}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->getMatches(Ljava/lang/String;Ljava/util/Vector;I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRecentlyContactedContactNames(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;
    .registers 6
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyContactedContacts:Ljava/util/Vector;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->isCacheExpired()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 57
    :cond_a
    const/16 v1, 0x19

    invoke-static {p1, v1}, Lcom/vlingo/client/util/ContactUtil;->getRecentlyContactedContacts(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyContactedContacts:Ljava/util/Vector;

    .line 58
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->onCacheRefreshed()V

    .line 60
    :cond_15
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyContactedContacts:Ljava/util/Vector;

    invoke-static {p2, v1, p3}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->getMatches(Ljava/lang/String;Ljava/util/Vector;I)Ljava/util/Vector;

    move-result-object v0

    .line 61
    .local v0, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_27

    .line 62
    :cond_23
    invoke-static {p1, p2, p3}, Lcom/vlingo/client/util/ContactUtil;->getRecentlyContactedContacts(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v0

    .line 64
    :cond_27
    return-object v0
.end method

.method public getRecentlyTextedContactNames(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;
    .registers 5
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyTextedContacts:Ljava/util/Vector;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->isCacheExpired()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 41
    :cond_a
    const/16 v0, 0x19

    invoke-static {p1, v0}, Lcom/vlingo/client/util/ContactUtil;->getRecentlyTextedContacts(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyTextedContacts:Ljava/util/Vector;

    .line 42
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->onCacheRefreshed()V

    .line 44
    :cond_15
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->recentlyTextedContacts:Ljava/util/Vector;

    invoke-static {p2, v0, p3}, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->getMatches(Ljava/lang/String;Ljava/util/Vector;I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method protected isCacheExpired()Z
    .registers 7

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->lastAccessTime:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onCacheRefreshed()V
    .registers 3

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vlingo/client/typedrequests/provider/RecentContactsCache;->lastAccessTime:J

    .line 37
    return-void
.end method
