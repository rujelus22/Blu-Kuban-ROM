.class LaY/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/p;


# instance fields
.field final synthetic a:LaY/m;


# direct methods
.method constructor <init>(LaY/m;)V
    .registers 2

    iput-object p1, p0, LaY/n;->a:LaY/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)Z
    .registers 5

    sparse-switch p1, :sswitch_data_18

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    iget-object v0, p0, LaY/n;->a:LaY/m;

    invoke-virtual {v0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :sswitch_c
    sget-object v0, LaY/m;->A:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->hide()V

    iget-object v0, p0, LaY/n;->a:LaY/m;

    invoke-virtual {v0, p1, p2, p3}, LaY/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_4

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_c
        0x5 -> :sswitch_5
        0x25b -> :sswitch_c
    .end sparse-switch
.end method

.method public o()V
    .registers 2

    sget-object v0, LaY/m;->A:Lcom/google/googlenav/ui/view/android/aP;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aP;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, LaY/m;->A:Lcom/google/googlenav/ui/view/android/aP;

    return-void
.end method
