.class Lcom/google/googlenav/appwidget/friends/e;
.super LY/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/google/googlenav/appwidget/friends/e;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/googlenav/appwidget/friends/e;->a:Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;

    sget-object v1, Lcom/google/googlenav/appwidget/friends/g;->e:Lcom/google/googlenav/appwidget/friends/g;

    invoke-static {v0, v1}, Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;->b(Lcom/google/googlenav/appwidget/friends/FriendsAppWidgetUpdateService;Lcom/google/googlenav/appwidget/friends/g;)V

    .line 518
    return-void
.end method
