.class public Lcom/google/android/apps/reader/provider/ReaderContract$Intents;
.super Ljava/lang/Object;
.source "ReaderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CONTENT_CHANGED:Ljava/lang/String; = "com.google.reader.intent.action.CONTENT_CHANGED"

.field public static final ACTION_TAG:Ljava/lang/String; = "org.openintents.action.TAG"

.field public static final ACTION_VIEW_ITEM:Ljava/lang/String; = "com.google.reader.intent.action.VIEW_ITEM"

.field public static final EXTRA_FOLDER:Ljava/lang/String; = "folder"

.field public static final EXTRA_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final EXTRA_STREAM_ID:Ljava/lang/String; = "stream_id"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    return-void
.end method
