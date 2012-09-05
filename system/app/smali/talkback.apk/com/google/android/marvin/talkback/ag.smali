.class final Lcom/google/android/marvin/talkback/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/l;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/ag;->a:Lcom/google/android/marvin/talkback/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ag;->a:Lcom/google/android/marvin/talkback/l;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/l;->g(Lcom/google/android/marvin/talkback/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000b

    const v2, 0x7f080005

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->b(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ag;->a:Lcom/google/android/marvin/talkback/l;

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/l;->a(Z)V

    return-void
.end method
