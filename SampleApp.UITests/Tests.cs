using NUnit.Framework;
using Xamarin.UITest;

namespace SampleApp.UITests
{
	[TestFixture(Platform.Android)]
	public class AndroidTests
	{
		IApp app;
		Platform platform;

		public AndroidTests(Platform platform)
		{
			this.platform = platform;
		}

		[SetUp()]
		public void BeforeEachTest()
		{
			app = AppInitializer.StartApp(platform);
		}

		[Test()]
		public void TappingTheButton()
		{
			// uncomment to launch the repl
			//app.Repl();

			var buttonId = "myButton";

			Assert.AreEqual("Hello World, Click Me!", app.Query(buttonId)[0].Text);
			app.Tap(buttonId);
			Assert.AreEqual("1 clicks!", app.Query(buttonId)[0].Text);
			app.Tap(buttonId);
			Assert.AreEqual("2 clicks!", app.Query(buttonId)[0].Text);
		}
	}

	[TestFixture(Platform.iOS)]
	public class IosTests
	{
		IApp app;
		Platform platform;

		public IosTests(Platform platform)
		{
			this.platform = platform;
		}

		[SetUp()]
		public void BeforeEachTest()
		{
			app = AppInitializer.StartApp(platform);
		}

		[Test()]
		public void TappingTheButton()
		{
			// uncomment to launch the repl
			//app.Repl();

			var buttonId = "myButton";

			Assert.AreEqual("Hello World, Click Me!", app.Query(buttonId)[0].Label);
			app.Tap(buttonId);
			Assert.AreEqual("1 clicks!", app.Query(buttonId)[0].Label);
			app.Tap(buttonId);
			Assert.AreEqual("2 clicks!", app.Query(buttonId)[0].Label);
		}
	}
}
