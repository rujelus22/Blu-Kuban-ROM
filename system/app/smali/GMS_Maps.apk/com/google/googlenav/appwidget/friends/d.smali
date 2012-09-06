.class Lcom/google/googlenav/appwidget/friends/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/friends/g;

.field final synthetic b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/d;->b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    iput-object p2, p0, Lcom/google/googlenav/appwidget/friends/d;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/d;->b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/d;->a:Lcom/google/googlenav/appwidget/friends/g;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->a(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)Lcom/google/googlenav/appwidget/friends/g;

    move-result-object v0

    .line 341
    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->g:Lcom/google/googlenav/appwidget/friends/g;

    if-ne v0, v1, :cond_d

    .line 348
    :cond_c
    :goto_c
    return-void

    .line 343
    :cond_d
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/d;->a:Lcom/google/googlenav/appwidget/friends/g;

    if-eq v0, v1, :cond_c

    .line 346
    iget-object v1, p0, Lcom/google/googlenav/appwidget/friends/d;->b:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-static {v1, v0}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    goto :goto_c
.end method
