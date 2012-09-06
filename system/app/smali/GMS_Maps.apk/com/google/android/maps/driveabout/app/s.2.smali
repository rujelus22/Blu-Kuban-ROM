.class Lcom/google/android/maps/driveabout/app/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/R;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/R;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/S;->b:Lcom/google/android/maps/driveabout/app/R;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/S;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->b:Lcom/google/android/maps/driveabout/app/R;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/S;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/R;->a(Ljava/util/ArrayList;)V

    .line 310
    return-void
.end method
