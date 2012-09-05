.class public Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;
.super Ljava/lang/Object;
.source "VRUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/util/VRUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VRLog"
.end annotation


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1153
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1150
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "trw"

    .prologue
    .line 1165
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1166
    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1147
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_7
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1144
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 1156
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "trw"

    .prologue
    .line 1171
    sget-boolean v0, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1172
    :cond_7
    return-void
.end method
