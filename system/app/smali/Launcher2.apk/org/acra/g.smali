.class final Lorg/acra/g;
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
    .line 127
    iput-object p1, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 131
    invoke-static {}, Lorg/acra/ErrorReporter;->b()Lorg/acra/ErrorReporter;

    move-result-object v0

    .line 134
    new-instance v1, Lorg/acra/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/acra/n;-><init>(Lorg/acra/ErrorReporter;)V

    .line 135
    invoke-virtual {v1}, Lorg/acra/n;->a()V

    .line 138
    iget-object v0, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 139
    iget-object v0, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    iget-object v0, v0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v2}, Lorg/acra/CrashReportDialog;->a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/acra/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2c
    iget-object v0, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->b(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->c(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 144
    iget-object v0, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v0}, Lorg/acra/CrashReportDialog;->c(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-static {v2}, Lorg/acra/CrashReportDialog;->b(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 146
    const-string v3, "acra.user.email"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    iget-object v2, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    iget-object v2, v2, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/acra/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_63
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from CrashReportDialog"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v1}, Lorg/acra/n;->start()V

    .line 156
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/a/a;->g()I

    move-result v0

    .line 157
    if-eqz v0, :cond_85

    .line 158
    iget-object v1, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v1}, Lorg/acra/CrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    :cond_85
    iget-object v0, p0, Lorg/acra/g;->a:Lorg/acra/CrashReportDialog;

    invoke-virtual {v0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 161
    return-void
.end method
