.class public Lcom/android/browser/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field private static final SYSTEM_CPU_FORMAT:[I

.field private static mInTrace:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/browser/Performance;->SYSTEM_CPU_FORMAT:[I

    return-void

    :array_a
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tracePageFinished()V
    .registers 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/browser/Performance;->mInTrace:Z

    if-eqz v0, :cond_a

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/Performance;->mInTrace:Z

    .line 77
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 79
    :cond_a
    return-void
.end method

.method static tracePageStart(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 59
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 62
    :try_start_a
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, uri:Landroid/net/WebAddress;
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;
    :try_end_12
    .catch Landroid/net/ParseException; {:try_start_a .. :try_end_12} :catch_37

    move-result-object v1

    .line 67
    .end local v2           #uri:Landroid/net/WebAddress;
    .local v1, host:Ljava/lang/String;
    :goto_13
    const/16 v3, 0x2e

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".trace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/browser/Performance;->mInTrace:Z

    .line 70
    const/high16 v3, 0x140

    invoke-static {v1, v3}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 72
    .end local v1           #host:Ljava/lang/String;
    :cond_36
    return-void

    .line 64
    :catch_37
    move-exception v0

    .line 65
    .local v0, ex:Landroid/net/ParseException;
    const-string v1, "browser"

    .restart local v1       #host:Ljava/lang/String;
    goto :goto_13
.end method
