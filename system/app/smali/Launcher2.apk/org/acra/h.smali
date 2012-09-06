.class final Lorg/acra/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lorg/acra/CrashReportDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lorg/acra/h;->a:Lorg/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 171
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter;->d()V

    .line 172
    iget-object v0, p0, Lorg/acra/h;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 173
    return-void
.end method
