.class public Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloseTraceCursorWrapper"
.end annotation


# instance fields
.field private mTrace:Ljava/lang/Exception;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1074
    return-void
.end method

.method static alwaysCreateForTest(Landroid/database/Cursor;)Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;
    .registers 2
    .parameter "original"

    .prologue
    .line 1107
    new-instance v0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static get(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 1
    .parameter "original"

    .prologue
    .line 1103
    return-object p0
.end method

.method public static getTraceIfAvailable(Landroid/database/Cursor;)Ljava/lang/Exception;
    .registers 2
    .parameter "c"

    .prologue
    .line 1083
    instance-of v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    if-eqz v0, :cond_9

    .line 1084
    check-cast p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;

    .end local p0
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->mTrace:Ljava/lang/Exception;

    .line 1086
    :goto_8
    return-object v0

    .restart local p0
    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static log(Landroid/database/Cursor;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 1091
    if-nez p0, :cond_3

    .line 1100
    :goto_2
    return-void

    .line 1094
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1095
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor was closed here: Cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->getTraceIfAvailable(Landroid/database/Cursor;)Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1098
    :cond_26
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor not closed.  Cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 1078
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "STACK TRACE"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->mTrace:Ljava/lang/Exception;

    .line 1079
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 1080
    return-void
.end method
