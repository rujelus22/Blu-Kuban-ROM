.class Lcom/google/android/maps/driveabout/app/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/H;


# instance fields
.field final synthetic a:Lk/b;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationService;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationService;Lk/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cu;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Lk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Lk/b;

    invoke-virtual {v0}, Lk/b;->b()V

    .line 841
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    .line 842
    return-void
.end method
