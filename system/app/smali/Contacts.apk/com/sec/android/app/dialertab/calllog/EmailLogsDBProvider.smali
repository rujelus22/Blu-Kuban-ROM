.class public Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider;
.super Ljava/lang/Object;
.source "EmailLogsDBProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider$VideoCall;,
        Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider$CallDelete;,
        Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider$AllCallDelete;,
        Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider$Frequent;,
        Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider$Sms;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-string v0, "content://logs/email"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/EmailLogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method
