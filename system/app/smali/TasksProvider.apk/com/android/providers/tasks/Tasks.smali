.class public final Lcom/android/providers/tasks/Tasks;
.super Ljava/lang/Object;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/tasks/Tasks$TaskReminderAlerts;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field public static final SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

.field public static final TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

.field public static final TASK_CONTENT_URI:Landroid/net/Uri;

.field public static final UPDATED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "content://tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/tasks/Tasks;->CONTENT_URI:Landroid/net/Uri;

    .line 63
    const-string v0, "content://tasks/tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/tasks/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://tasks/UpdatedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/tasks/Tasks;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    .line 77
    const-string v0, "content://tasks/DeletedTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/tasks/Tasks;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 87
    const-string v0, "content://tasks/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/tasks/Tasks;->SYNCHED_TASKS_CONTENT_URI:Landroid/net/Uri;

    .line 90
    const-string v0, "content://tasks/TasksAccounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/tasks/Tasks;->TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method
