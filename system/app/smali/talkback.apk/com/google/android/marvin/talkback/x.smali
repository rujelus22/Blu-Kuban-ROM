.class final Lcom/google/android/marvin/talkback/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/n;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/n;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/x;->a:Lcom/google/android/marvin/talkback/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/marvin/talkback/x;->a:Lcom/google/android/marvin/talkback/n;

    invoke-static {v0}, Lcom/google/android/marvin/talkback/n;->a(Lcom/google/android/marvin/talkback/n;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    const v2, 0x7f080003

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/marvin/utils/j;->b(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v1

    const v2, 0x7f070007

    const v3, 0x7f080004

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/marvin/utils/j;->b(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)Z

    move-result v2

    const v3, 0x7f07000a

    const v4, 0x7f07001f

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/marvin/utils/j;->a(Landroid/content/SharedPreferences;Landroid/content/res/Resources;II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/marvin/talkback/x;->a:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v3, v1}, Lcom/google/android/marvin/talkback/n;->a(Z)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/x;->a:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/talkback/n;->b(Z)V

    iget-object v1, p0, Lcom/google/android/marvin/talkback/x;->a:Lcom/google/android/marvin/talkback/n;

    invoke-virtual {v1, v0}, Lcom/google/android/marvin/talkback/n;->a(I)V

    return-void
.end method
