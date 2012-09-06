.class Lcom/google/android/maps/driveabout/app/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/I;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationImageView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lo/I;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cg;->b:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cg;->a:Lo/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cg;->b:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cg;->a:Lo/I;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lo/I;Z)V

    .line 320
    return-void
.end method
