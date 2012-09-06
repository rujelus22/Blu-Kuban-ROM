.class public Lcom/google/android/apps/plus/phone/DumpDatabase;
.super Ljava/lang/Object;
.source "DumpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/DumpDatabase$2;,
        Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;,
        Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;,
        Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;)V
    .registers 10
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/apps/plus/phone/DumpDatabase$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/DumpDatabase$1;-><init>(Lcom/google/android/apps/plus/phone/DumpDatabase;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/google/android/apps/plus/phone/DumpDatabase$2;->$SwitchMap$com$google$android$apps$plus$phone$DumpDatabase$DatabaseAction:[I

    invoke-virtual {p2}, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 71
    :goto_1a
    return-void

    .line 59
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;

    const-string v1, "Dump database"

    const-string v2, "Dumping ..."

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 61
    new-instance v0, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;-><init>(Lcom/google/android/apps/plus/phone/DumpDatabase;)V

    new-array v1, v6, [Ljava/lang/Void;

    check-cast v5, Ljava/lang/Void;

    aput-object v5, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/DumpDatabase$DumpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1a

    .line 65
    :pswitch_37
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;

    const-string v1, "Clean database"

    const-string v2, "Cleaning ..."

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    new-instance v0, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;-><init>(Lcom/google/android/apps/plus/phone/DumpDatabase;)V

    new-array v1, v6, [Ljava/lang/Void;

    check-cast v5, Ljava/lang/Void;

    aput-object v5, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/DumpDatabase$CleanTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1a

    .line 57
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/DumpDatabase;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/DumpDatabase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static cleanNow(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/apps/plus/phone/DumpDatabase;

    sget-object v1, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->CLEAN:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/DumpDatabase;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;)V

    .line 53
    return-void
.end method

.method public static dumpNow(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/apps/plus/phone/DumpDatabase;

    sget-object v1, Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;->DUMP:Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/DumpDatabase;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/phone/DumpDatabase$DatabaseAction;)V

    .line 49
    return-void
.end method
