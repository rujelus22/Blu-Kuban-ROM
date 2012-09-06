.class LaM/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/g;


# instance fields
.field final synthetic a:LaM/m;


# direct methods
.method constructor <init>(LaM/m;)V
    .registers 2
    .parameter

    .prologue
    .line 831
    iput-object p1, p0, LaM/p;->a:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    sparse-switch p1, :sswitch_data_18

    .line 842
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 836
    :sswitch_5
    iget-object v0, p0, LaM/p;->a:LaM/m;

    invoke-virtual {v0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .line 839
    :sswitch_c
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->hide()V

    .line 840
    iget-object v0, p0, LaM/p;->a:LaM/m;

    invoke-virtual {v0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .line 834
    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_c
        0x5 -> :sswitch_5
        0x25b -> :sswitch_c
    .end sparse-switch
.end method

.method public h()V
    .registers 2

    .prologue
    .line 847
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->dismiss()V

    .line 848
    const/4 v0, 0x0

    sput-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    .line 849
    return-void
.end method
