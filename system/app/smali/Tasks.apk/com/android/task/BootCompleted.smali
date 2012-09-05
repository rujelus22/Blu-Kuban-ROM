.class public Lcom/android/task/BootCompleted;
.super Landroid/content/BroadcastReceiver;
.source "BootCompleted.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field cr:Landroid/content/ContentResolver;

.field mcursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "task_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reminder_time"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "due_date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountkey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "reminder_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/task/BootCompleted;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/task/BootCompleted;->cr:Landroid/content/ContentResolver;

    .line 19
    iput-object v0, p0, Lcom/android/task/BootCompleted;->mcursor:Landroid/database/Cursor;

    .line 58
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    const-string v0, "BootCompleted"

    const-string v1, "======== onReceive ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "In On Boot Receiver ******************"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    return-void
.end method
