.class Lcom/google/android/maps/driveabout/app/bR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eH;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bR;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 909
    return-void
.end method

.method public a(Lo/P;)V
    .registers 3
    .parameter

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bR;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->g(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->h()Lcom/google/android/maps/driveabout/app/dD;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dD;->a(Lo/P;)V

    .line 905
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 913
    return-void
.end method
