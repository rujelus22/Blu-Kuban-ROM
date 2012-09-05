.class public final Lcom/android/emailcommon/provider/Tasks;
.super Ljava/lang/Object;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/Tasks$TasksAccounts;,
        Lcom/android/emailcommon/provider/Tasks$TaskReminderAlerts;,
        Lcom/android/emailcommon/provider/Tasks$TaskReminderColumns;,
        Lcom/android/emailcommon/provider/Tasks$TasksTbl;,
        Lcom/android/emailcommon/provider/Tasks$TasksColumns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final Q1_DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final Q1_TASK_CONTENT_URI:Landroid/net/Uri;

.field public static final Q1_UPDATED_CONTENT_URI:Landroid/net/Uri;

.field public static final SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

.field public static final TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

.field public static final TASK_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string v0, "content://tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://tasks/tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->Q1_TASK_CONTENT_URI:Landroid/net/Uri;

    .line 79
    const-string v0, "content://tasks/UpdatedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 81
    const-string v0, "content://com.android.calendar/UpdatedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->Q1_UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "content://tasks/DeletedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 86
    const-string v0, "content://com.android.calendar/DeletedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->Q1_DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://tasks/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    .line 91
    const-string v0, "content://tasks/TasksAccounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/Tasks;->TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method
