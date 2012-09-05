.class public Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;
.super Ljava/util/ArrayList;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CalendarOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mCount:I

.field private mEventStart:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2004
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2007
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 2009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    .line 2011
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;[Landroid/content/ContentProviderResult;)[Landroid/content/ContentProviderResult;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object p1
.end method


# virtual methods
.method public add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z
    .registers 3
    .parameter "op"

    .prologue
    .line 2016
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 2018
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 2004
    check-cast p1, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    move-result v0

    return v0
.end method

.method public delete(JLjava/lang/String;)V
    .registers 9
    .parameter "id"
    .parameter "syncId"

    .prologue
    .line 2158
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2172
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "original_sync_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2176
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cv"

    .prologue
    .line 2035
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    .line 2036
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;I)V
    .registers 6
    .parameter "cv"
    .parameter "eventStart"

    .prologue
    .line 2045
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterAttendees:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id"

    invoke-direct {v0, v1, v2, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2049
    return-void
.end method

.method public newDelete(JLjava/lang/String;)I
    .registers 5
    .parameter "id"
    .parameter "serverId"

    .prologue
    .line 2029
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 2030
    .local v0, offset:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V

    .line 2031
    return v0
.end method

.method public newEvent(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)I
    .registers 3
    .parameter "op"

    .prologue
    .line 2023
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    .line 2024
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2025
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return v0
.end method

.method public newException(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "cv"

    .prologue
    .line 2065
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2068
    return-void
.end method

.method public newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2080
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id"

    iget v3, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2085
    return-void
.end method

.method public newReminder(I)V
    .registers 3
    .parameter "mins"

    .prologue
    .line 2148
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 2149
    return-void
.end method

.method public newReminder(II)V
    .registers 7
    .parameter "mins"
    .parameter "eventStart"

    .prologue
    .line 2140
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterReminders:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1600(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "minutes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "method"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id"

    invoke-direct {v0, v1, v2, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2145
    return-void
.end method

.method public updatedAttendee(Landroid/content/ContentValues;J)V
    .registers 6
    .parameter "cv"
    .parameter "id"

    .prologue
    .line 2052
    const-string v0, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2056
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterAttendees:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2058
    return-void
.end method

.method public updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 15
    .parameter "name"
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 2090
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1500()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_id=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2094
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 2096
    .local v7, extendedPropertyId:J
    if-eqz v6, :cond_32

    .line 2098
    :try_start_24
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2099
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_55

    move-result-wide v7

    .line 2102
    :cond_2f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2107
    :cond_32
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_5a

    .line 2118
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    #getter for: Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1400(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;)Z

    .line 2127
    :goto_54
    return-void

    .line 2102
    :catchall_55
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2125
    :cond_5a
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method
