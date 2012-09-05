.class public Lcom/arcsoft/quickview/MediaList$NotifyCode;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotifyCode"
.end annotation


# static fields
.field public static final LIST_CREATE_CANCELED:I = 0x2

.field public static final LIST_CREATE_FINISHED:I = 0x1

.field public static final LIST_CREATE_STARTED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
