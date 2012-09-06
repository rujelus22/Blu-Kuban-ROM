.class LC/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:LC/m;


# direct methods
.method private constructor <init>(LC/m;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, LC/p;->a:LC/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LC/m;LC/n;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, LC/p;-><init>(LC/m;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_66

    move v0, v2

    .line 186
    :goto_8
    return v0

    .line 159
    :pswitch_9
    iget-object v2, p0, LC/p;->a:LC/m;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LC/o;

    invoke-static {v2, v0}, LC/m;->a(LC/m;LC/o;)V

    move v0, v1

    .line 160
    goto :goto_8

    .line 162
    :pswitch_14
    iget-object v2, p0, LC/p;->a:LC/m;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LC/o;

    invoke-static {v2, v0}, LC/m;->b(LC/m;LC/o;)V

    move v0, v1

    .line 163
    goto :goto_8

    .line 165
    :pswitch_1f
    iget-object v2, p0, LC/p;->a:LC/m;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, LC/R;

    invoke-static {v2, v0}, LC/m;->a(LC/m;LC/R;)V

    move v0, v1

    .line 166
    goto :goto_8

    .line 168
    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 169
    iget-object v3, p0, LC/p;->a:LC/m;

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    invoke-static {v3, v2, v0}, LC/m;->a(LC/m;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 171
    goto :goto_8

    .line 173
    :pswitch_3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 174
    iget-object v3, p0, LC/p;->a:LC/m;

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    invoke-static {v3, v2, v0}, LC/m;->b(LC/m;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 176
    goto :goto_8

    .line 178
    :pswitch_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 179
    iget-object v3, p0, LC/p;->a:LC/m;

    aget-object v2, v0, v2

    aget-object v0, v0, v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v0, v4}, LC/m;->a(LC/m;Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v1

    .line 181
    goto :goto_8

    .line 183
    :pswitch_5f
    iget-object v0, p0, LC/p;->a:LC/m;

    invoke-static {v0}, LC/m;->a(LC/m;)V

    move v0, v1

    .line 184
    goto :goto_8

    .line 157
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_9
        :pswitch_14
        :pswitch_1f
        :pswitch_2a
        :pswitch_3b
        :pswitch_4c
        :pswitch_5f
    .end packed-switch
.end method
