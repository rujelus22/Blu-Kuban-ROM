.class Lcom/google/android/apps/plus/fragments/HostedEventListFragment$UpcomingEventsLoader;
.super Lcom/google/android/apps/plus/phone/EsCursorLoader;
.source "HostedEventListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpcomingEventsLoader"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->EVENTS_ALL_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 96
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$UpcomingEventsLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 97
    return-void
.end method


# virtual methods
.method public esLoadInBackground()Landroid/database/Cursor;
    .registers 6

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$UpcomingEventsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$UpcomingEventsLoader;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/apps/plus/fragments/HostedEventListFragment$Query;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsEventData;->getMyCurrentEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
