.class final Lcom/google/android/a/a/a/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/a/a/a/n;

.field private final synthetic b:Lcom/google/android/a/a/c/a;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/a/n;Ljava/lang/String;Lcom/google/android/a/a/c/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iput-object p3, p0, Lcom/google/android/a/a/a/p;->b:Lcom/google/android/a/a/c/a;

    .line 123
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 127
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Already in the process of connecting. Ignoring connect request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_17
    return-void

    .line 130
    :cond_18
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0, v1}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Z)V

    .line 132
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->b(Lcom/google/android/a/a/a/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->c(Lcom/google/android/a/a/a/n;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 134
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/a/a/a/n;->b(Lcom/google/android/a/a/a/n;Z)V

    .line 135
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->d(Lcom/google/android/a/a/a/n;)V

    .line 138
    :cond_3a
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iget-object v1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iget-object v2, p0, Lcom/google/android/a/a/a/p;->b:Lcom/google/android/a/a/c/a;

    invoke-static {v1, v2}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/a;)Lcom/google/android/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/a/a;)V
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_f7

    .line 141
    :try_start_47
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iget-object v1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v1}, Lcom/google/android/a/a/a/n;->e(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/a/a/a/a;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/a/n;->c(Lcom/google/android/a/a/a/n;Z)V
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_f7
    .catch Lcom/google/net/async/IpV6BugException; {:try_start_47 .. :try_end_56} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_e5

    .line 166
    :goto_56
    :try_start_56
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->h(Lcom/google/android/a/a/a/n;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-virtual {v0}, Lcom/google/android/a/a/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 168
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->i(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/c;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0}, Lcom/google/android/a/a/a/n;->j(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/d;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 169
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iget-object v1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v1}, Lcom/google/android/a/a/a/n;->i(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v2}, Lcom/google/android/a/a/a/n;->j(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/c/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;)V
    :try_end_84
    .catchall {:try_start_56 .. :try_end_84} :catchall_f7

    .line 174
    :cond_84
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v0, v3}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Z)V

    goto :goto_17

    .line 144
    :catch_8a
    move-exception v0

    :try_start_8b
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IP Address of the phone is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v2}, Lcom/google/android/a/a/a/n;->f(Lcom/google/android/a/a/a/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "java.net.preferIPv4Stack"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This device suffers from issue 9431 on code.google.com - setting java.net.preferIPv6Addresses to false, java.net.preferIPv4Stack to true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iget-object v1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iget-object v2, p0, Lcom/google/android/a/a/a/p;->b:Lcom/google/android/a/a/c/a;

    invoke-static {v1, v2}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/a;)Lcom/google/android/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/a/a;)V
    :try_end_cb
    .catchall {:try_start_8b .. :try_end_cb} :catchall_f7
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_cb} :catch_e5

    .line 153
    :try_start_cb
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    iget-object v1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v1}, Lcom/google/android/a/a/a/n;->e(Lcom/google/android/a/a/a/n;)Lcom/google/android/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/a/a/a/a;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/a/a/a/n;->c(Lcom/google/android/a/a/a/n;Z)V
    :try_end_da
    .catchall {:try_start_cb .. :try_end_da} :catchall_f7
    .catch Lcom/google/net/async/IpV6BugException; {:try_start_cb .. :try_end_da} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_da} :catch_e5

    .line 159
    :goto_da
    :try_start_da
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "You\'re lucky - that seems to have worked!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_f7
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e3} :catch_e5

    goto/16 :goto_56

    .line 161
    :catch_e5
    move-exception v0

    .line 162
    :try_start_e6
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "Error testing for buffered proxy. Will assume the worst (buffered proxy)"

    .line 162
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    iget-object v0, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/a/a/a/n;->c(Lcom/google/android/a/a/a/n;Z)V
    :try_end_f5
    .catchall {:try_start_e6 .. :try_end_f5} :catchall_f7

    goto/16 :goto_56

    .line 173
    :catchall_f7
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v1, v3}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Z)V

    .line 175
    throw v0

    .line 155
    :catch_fe
    move-exception v0

    :try_start_ff
    invoke-static {}, Lcom/google/android/a/a/a/n;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tough luck, still can\'t connect. The remote control will not work"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/google/android/a/c/b;->g:Lcom/google/android/a/c/b;

    invoke-virtual {v0}, Lcom/google/android/a/c/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/android/a/a/a/p;->a:Lcom/google/android/a/a/a/n;

    invoke-static {v1}, Lcom/google/android/a/a/a/n;->g(Lcom/google/android/a/a/a/n;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_f7
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_117} :catch_e5

    goto :goto_da
.end method
