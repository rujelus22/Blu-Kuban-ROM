.class public Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;
.super Ljava/lang/Object;
.source "SMSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/util/SMSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedDisplayItemMatch"
.end annotation


# instance fields
.field public final matchedItem:Lcom/vlingo/client/core/contacts/DisplayItem;

.field public final parentItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 3
    .parameter "parentItem"
    .parameter "matchedItem"

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;->parentItem:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;

    .line 327
    iput-object p2, p0, Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;->matchedItem:Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/util/SMSUtil$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;-><init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;)V

    return-void
.end method
