.class final Landroid/support/place/theme/ThemeService$_ResultDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcResultHandler;


# instance fields
.field private callback:Ljava/lang/Object;

.field private methodId:I

.field final synthetic this$0:Landroid/support/place/theme/ThemeService;


# direct methods
.method public constructor <init>(Landroid/support/place/theme/ThemeService;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->this$0:Landroid/support/place/theme/ThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->methodId:I

    .line 96
    iput-object p3, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->callback:Ljava/lang/Object;

    .line 97
    return-void
.end method


# virtual methods
.method public final getTheme([B)V
    .registers 5
    .parameter

    .prologue
    .line 116
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 118
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/theme/Theme;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    check-cast v0, Landroid/support/place/theme/Theme;

    .line 119
    iget-object v1, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 120
    iget-object v1, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/support/place/theme/ThemeService$OnGetTheme;

    invoke-interface {v1, v0}, Landroid/support/place/theme/ThemeService$OnGetTheme;->onGetTheme(Landroid/support/place/theme/Theme;)V

    .line 122
    :cond_1a
    return-void
.end method

.method public final getThemeEngines([B)V
    .registers 5
    .parameter

    .prologue
    .line 125
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p1}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 127
    const-string v1, "_result"

    sget-object v2, Landroid/support/place/theme/ThemeEngine;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;

    move-result-object v1

    .line 128
    iget-object v0, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_18

    .line 129
    iget-object v0, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/support/place/theme/ThemeService$OnGetThemeEngines;

    invoke-interface {v0, v1}, Landroid/support/place/theme/ThemeService$OnGetThemeEngines;->onGetThemeEngines(Ljava/util/List;)V

    .line 131
    :cond_18
    return-void
.end method

.method public final onResult([B)V
    .registers 3
    .parameter

    .prologue
    .line 100
    iget v0, p0, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->methodId:I

    packed-switch v0, :pswitch_data_e

    .line 113
    :goto_5
    :pswitch_5
    return-void

    .line 104
    :pswitch_6
    invoke-virtual {p0, p1}, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->getTheme([B)V

    goto :goto_5

    .line 109
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/support/place/theme/ThemeService$_ResultDispatcher;->getThemeEngines([B)V

    goto :goto_5

    .line 100
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method
